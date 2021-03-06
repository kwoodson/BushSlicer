Feature: Node operations test scenarios

  # @author jhou@redhat.com
  @admin
  @destructive
  Scenario Outline: Drain a node that has cloud vendor volumes
    Given environment has at least 2 schedulable nodes
    And I have a project

    # Create a deployment config
    When I run the :new_app client command with:
      | template | jenkins-persistent |
    Then the step should succeed
    And a pod becomes ready with labels:
      | name=jenkins |

    # Restore schedulable node
    Given node schedulable status should be restored after scenario
    When I run the :oadm_drain admin command with:
      | node_name         | <%= pod.node_name %> |
      | delete-local-data | true                 |
      | ignore-daemonsets | true                 |
    Then the step should succeed

    # Verify old pod is deleted
    And I wait for the resource "pod" named "<%= pod.name %>" to disappear

    # After draining, new Pod becomes available
    And a pod becomes ready with labels:
      | name=jenkins |

    Examples:
      | cloud_provider |
      | gcp            | # @case_id OCP-15287
      | azure-disk     | # @case_id OCP-15275
      | vsphere-volume | # @case_id OCP-15268
      | cinder         | # @case_id OCP-15276
      | aws-ebs        | # @case_id OCP-15283

