#!/bin/bash
# Create a proper refactored directory structure

# Create base directories
mkdir -p swacd/{agents,coherence,config,core,data,docs,embedding,examples,exceptions,.github,interfaces,knowledge,memory,metrics,models,ontology,pipelines,prompts,reasoning,scripts,tests,world_model,affect,orchestrator,reflection,messaging}

# Create subdirectories for coherence
mkdir -p swacd/coherence/{engine,rules}

# Create subdirectories for GitHub templates and workflows
mkdir -p swacd/.github/{ISSUE_TEMPLATE,PULL_REQUEST_TEMPLATE,workflows}

# Create subdirectories for memory
mkdir -p swacd/memory/{semantic_db,vector_db}

# Create subdirectories for world_model
mkdir -p swacd/world_model/{perception,graph_models,causal_models}

# Create subdirectories for affect
mkdir -p swacd/affect/{emotion_models,intrinsic_motivation,reward_shaping}

# Create subdirectories for orchestrator
mkdir -p swacd/orchestrator/{action_selection,planning,symbolic_reasoning}

# Create subdirectories for reflection
mkdir -p swacd/reflection/{meta_learning,introspection,goal_management}

# Create subdirectories for messaging
mkdir -p swacd/messaging/{redis,kafka,grpc,ray_orchestration,schemas}

# Create basic __init__.py files in all Python directories
find swacd -type d | grep -v "__pycache__" | xargs -I{} touch "{}/__init__.py"

# Create files for agents
touch swacd/agents/{agent.py,multi_agent.py}

# Create files for coherence
touch swacd/coherence/coherence_metric.py
touch swacd/coherence/engine/coherence_metric.py
touch swacd/coherence/rules/{logical_consistency.py,semantic_similarity.py,temporal_consistency.py}

# Create files for config
touch swacd/config/{config.py,memory_config.py}

# Create files for core
touch swacd/core/{models.py,utils.py}

# Create files for data
touch swacd/data/.gitkeep

# Create files for docs
touch swacd/docs/{api.md,architecture.md,index.md}

# Create files for embedding
touch swacd/embedding/embedding.py

# Create files for examples
touch swacd/examples/{basic_usage.py,integration_example.py,world_model_example.py,affect_example.py,orchestrator_example.py,reflection_example.py,messaging_example.py}

# Create files for exceptions
touch swacd/exceptions/exceptions.py

# Create files for GitHub
touch swacd/.github/ISSUE_TEMPLATE/{bug_report.md,feature_request.md}
touch swacd/.github/PULL_REQUEST_TEMPLATE/pull_request_template.md
touch swacd/.github/workflows/ci.yml

# Create files for interfaces
touch swacd/interfaces/{interfaces.py,world_model_interface.py,affect_interface.py,orchestrator_interface.py,reflection_interface.py,messaging_interface.py}

# Create files for knowledge
touch swacd/knowledge/{knowledge_base.py,retrieval.py}

# Create files for memory
touch swacd/memory/memory.py
touch swacd/memory/semantic_db/{neo4j_client.py,networkx_client.py}
touch swacd/memory/vector_db/{faiss_client.py,pinecone_client.py}

# Create files for metrics
touch swacd/metrics/metrics.py

# Create files for models
touch swacd/models/{embedding_models.py,inference_models.py}

# Create files for ontology
touch swacd/ontology/{relationships.py,schema.py}

# Create files for pipelines
touch swacd/pipelines/{data_pipeline.py,processing_pipeline.py}

# Create files for prompts
touch swacd/prompts/{prompt_engineering.py,prompt_templates.py}

# Create files for reasoning
touch swacd/reasoning/{inference.py,logic.py,planning.py}

# Create files for scripts
touch swacd/scripts/data_migration.py

# Create files for tests
touch swacd/tests/{test_coherence.py,test_memory.py,test_world_model.py,test_affect.py,test_orchestrator.py,test_reflection.py,test_messaging.py}

# Create files for world_model
touch swacd/world_model/{world_model.py,environment.py,perception_pipeline.py}
touch swacd/world_model/perception/{vision_transformer.py,multimodal.py,feature_extraction.py}
touch swacd/world_model/graph_models/{gnn.py,relation_extraction.py,causal_graph.py}

# Create files for affect
touch swacd/affect/{affect_system.py,emotion_embedding.py,value_network.py}
touch swacd/affect/emotion_models/{emobert.py,deepmoji.py,affect_metrics.py}
touch swacd/affect/intrinsic_motivation/{curiosity.py,surprise.py,novelty.py}

# Create files for orchestrator
touch swacd/orchestrator/{orchestrator.py,action_manager.py,cognitive_cycle.py}
touch swacd/orchestrator/planning/{pddl.py,task_planning.py,plan_execution.py}
touch swacd/orchestrator/symbolic_reasoning/{logic_tensor.py,symbolic_engine.py}

# Create files for reflection
touch swacd/reflection/{reflection_system.py,meta_coherence.py,self_modeling.py}
touch swacd/reflection/meta_learning/{maml.py,hyperparameter_optimization.py}
touch swacd/reflection/introspection/{prompt_chains.py,narrative_generation.py}

# Create files for messaging
touch swacd/messaging/{message_bus.py,event_streams.py,pubsub.py}
touch swacd/messaging/redis/redis_pubsub.py
touch swacd/messaging/kafka/{kafka_client.py,topics.py,producers.py,consumers.py}
touch swacd/messaging/grpc/{service_definitions.py,client.py,server.py}
touch swacd/messaging/schemas/{avro_schemas.py,protobuf_schemas.py,message_types.py}

# Create root files
touch swacd/{.editorconfig,.env.example,.flake8,CODE_OF_CONDUCT.md,CONTRIBUTING.md,Dockerfile,LICENSE,README.md,docker-compose.yml,mypy.ini,pyproject.toml,requirements.txt,setup.py}

echo "Directory structure created successfully!"