///////////////////////
// params
@description('Location for logic app.')
param location string = resourceGroup().location

@description('Logic app name.')
param logicAppName string

@description('Remote endpoint URL which should be called.')
param remoteEndpointURL string

resource logicApp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: logicAppName
  location: location
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {}
      triggers: {
        manual: {
          type: 'Request'
          kind: 'Http'
          inputs: {
            method: 'POST'
            schema: {
              properties: {
                createdDate: {
                  type: 'string'
                }
                data: {
                  properties: {}
                  type: 'object'
                }
                detailedMessage: {
                  properties: {
                    html: {
                      type: 'string'
                    }
                    markdown: {
                      type: 'string'
                    }
                    text: {
                      type: 'string'
                    }
                  }
                  type: 'object'
                }
                eventType: {
                  type: 'string'
                }
                id: {
                  type: 'string'
                }
                message: {
                  properties: {
                    html: {
                      type: 'string'
                    }
                    markdown: {
                      type: 'string'
                    }
                    text: {
                      type: 'string'
                    }
                  }
                  type: 'object'
                }
                publisherId: {
                  type: 'string'
                }
                resource: {
                  properties: {
                    comment: {
                      properties: {
                        '_links': {
                          properties: {
                            pullRequests: {
                              properties: {
                                href: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            repository: {
                              properties: {
                                href: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            self: {
                              properties: {
                                href: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            threads: {
                              properties: {
                                href: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                          }
                          type: 'object'
                        }
                        author: {
                          properties: {
                            '_links': {
                              properties: {
                                avatar: {
                                  properties: {
                                    href: {
                                      type: 'string'
                                    }
                                  }
                                  type: 'object'
                                }
                              }
                              type: 'object'
                            }
                            descriptor: {
                              type: 'string'
                            }
                            displayName: {
                              type: 'string'
                            }
                            id: {
                              type: 'string'
                            }
                            imageUrl: {
                              type: 'string'
                            }
                            uniqueName: {
                              type: 'string'
                            }
                            url: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        commentType: {
                          type: 'string'
                        }
                        content: {
                          type: 'string'
                        }
                        id: {
                          type: 'integer'
                        }
                        lastContentUpdatedDate: {
                          type: 'string'
                        }
                        lastUpdatedDate: {
                          type: 'string'
                        }
                        parentCommentId: {
                          type: 'integer'
                        }
                        publishedDate: {
                          type: 'string'
                        }
                        usersLiked: {
                          type: 'array'
                        }
                      }
                      type: 'object'
                    }
                    pullRequest: {
                      properties: {
                        artifactId: {
                          type: 'string'
                        }
                        codeReviewId: {
                          type: 'integer'
                        }
                        createdBy: {
                          properties: {
                            '_links': {
                              properties: {
                                avatar: {
                                  properties: {
                                    href: {
                                      type: 'string'
                                    }
                                  }
                                  type: 'object'
                                }
                              }
                              type: 'object'
                            }
                            descriptor: {
                              type: 'string'
                            }
                            displayName: {
                              type: 'string'
                            }
                            id: {
                              type: 'string'
                            }
                            imageUrl: {
                              type: 'string'
                            }
                            uniqueName: {
                              type: 'string'
                            }
                            url: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        creationDate: {
                          type: 'string'
                        }
                        description: {
                          type: 'string'
                        }
                        isDraft: {
                          type: 'boolean'
                        }
                        lastMergeCommit: {
                          properties: {
                            author: {
                              properties: {
                                date: {
                                  type: 'string'
                                }
                                email: {
                                  type: 'string'
                                }
                                name: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            comment: {
                              type: 'string'
                            }
                            commitId: {
                              type: 'string'
                            }
                            committer: {
                              properties: {
                                date: {
                                  type: 'string'
                                }
                                email: {
                                  type: 'string'
                                }
                                name: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            url: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        lastMergeSourceCommit: {
                          properties: {
                            commitId: {
                              type: 'string'
                            }
                            url: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        lastMergeTargetCommit: {
                          properties: {
                            commitId: {
                              type: 'string'
                            }
                            url: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        mergeId: {
                          type: 'string'
                        }
                        mergeStatus: {
                          type: 'string'
                        }
                        pullRequestId: {
                          type: 'integer'
                        }
                        repository: {
                          properties: {
                            id: {
                              type: 'string'
                            }
                            isDisabled: {
                              type: 'boolean'
                            }
                            name: {
                              type: 'string'
                            }
                            project: {
                              properties: {
                                id: {
                                  type: 'string'
                                }
                                lastUpdateTime: {
                                  type: 'string'
                                }
                                name: {
                                  type: 'string'
                                }
                                revision: {
                                  type: 'integer'
                                }
                                state: {
                                  type: 'string'
                                }
                                url: {
                                  type: 'string'
                                }
                                visibility: {
                                  type: 'string'
                                }
                              }
                              type: 'object'
                            }
                            remoteUrl: {
                              type: 'string'
                            }
                            size: {
                              type: 'integer'
                            }
                            sshUrl: {
                              type: 'string'
                            }
                            url: {
                              type: 'string'
                            }
                            webUrl: {
                              type: 'string'
                            }
                          }
                          type: 'object'
                        }
                        reviewers: {
                          type: 'array'
                        }
                        sourceRefName: {
                          type: 'string'
                        }
                        status: {
                          type: 'string'
                        }
                        supportsIterations: {
                          type: 'boolean'
                        }
                        targetRefName: {
                          type: 'string'
                        }
                        title: {
                          type: 'string'
                        }
                        url: {
                          type: 'string'
                        }
                      }
                      type: 'object'
                    }
                  }
                  type: 'object'
                }
                resourceContainers: {
                  properties: {
                    account: {
                      properties: {
                        baseUrl: {
                          type: 'string'
                        }
                        id: {
                          type: 'string'
                        }
                      }
                      type: 'object'
                    }
                    collection: {
                      properties: {
                        baseUrl: {
                          type: 'string'
                        }
                        id: {
                          type: 'string'
                        }
                      }
                      type: 'object'
                    }
                    project: {
                      properties: {
                        baseUrl: {
                          type: 'string'
                        }
                        id: {
                          type: 'string'
                        }
                      }
                      type: 'object'
                    }
                  }
                  type: 'object'
                }
                resourceVersion: {
                  type: 'string'
                }
              }
              type: 'object'
            }
          }
        }
      }
      actions: {
        Compose: {
          runAfter: {}
          type: 'Compose'
          inputs: {
            text: '''
@{triggerBody()?['message']?['markdown']}
PR: @{triggerBody()?['resource']?['pullRequest']?['title']}
Branch: @{substring(triggerBody()?['resource']?['pullRequest']?['sourceRefName'], add(1, lastIndexOf(triggerBody()?['resource']?['pullRequest']?['sourceRefName'], '/')))}
'''
          }
        }
        HTTP: {
          runAfter: {
            Compose: [
              'Succeeded'
            ]
          }
          type: 'Http'
          inputs: {
            body: '@outputs(\'Compose\')'
            headers: {
              'Content-type': 'application/json'
            }
            method: 'POST'
            uri: remoteEndpointURL
          }
        }
      }
      outputs: {}
    }
    parameters: {}
  }
}

///////////////////////
// output
