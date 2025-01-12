<?php
/**
 * This code was generated by
 * ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
 *  |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
 *  |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
 *
 * Twilio - Assistants
 * This is the public Twilio REST API.
 *
 * NOTE: This class is auto generated by OpenAPI Generator.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace Twilio\Rest\Assistants\V1;

use Twilio\Values;
abstract class KnowledgeModels
{
    /**
     * @property string $description The description of the policy.
     * @property string $id The Policy ID.
     * @property string $name The name of the policy.
     * @property array $policyDetails
     * @property string $type The description of the policy.
    */
    public static function createAssistantsV1ServiceCreatePolicyRequest(array $payload = []): AssistantsV1ServiceCreatePolicyRequest
    {
        return new AssistantsV1ServiceCreatePolicyRequest($payload);
    }

    /**
     * @property string $assistantId The Assistant ID.
     * @property string $description The description of the knowledge source.
     * @property array $knowledgeSourceDetails The details of the knowledge source based on the type.
     * @property string $name The name of the tool.
     * @property AssistantsV1ServiceCreatePolicyRequest $policy
     * @property string $type The type of the knowledge source.
     * @property string $embeddingModel The embedding model to be used for the knowledge source. It's required for 'Database' type but disallowed for other types.
    */
    public static function createAssistantsV1ServiceCreateKnowledgeRequest(array $payload = []): AssistantsV1ServiceCreateKnowledgeRequest
    {
        return new AssistantsV1ServiceCreateKnowledgeRequest($payload);
    }

    /**
     * @property string $description The description of the knowledge source.
     * @property array $knowledgeSourceDetails The details of the knowledge source based on the type.
     * @property string $name The name of the knowledge source.
     * @property AssistantsV1ServiceCreatePolicyRequest $policy
     * @property string $type The description of the knowledge source.
     * @property string $embeddingModel The embedding model to be used for the knowledge source. It's only applicable to 'Database' type.
    */
    public static function createAssistantsV1ServiceUpdateKnowledgeRequest(array $payload = []): AssistantsV1ServiceUpdateKnowledgeRequest
    {
        return new AssistantsV1ServiceUpdateKnowledgeRequest($payload);
    }

}

class AssistantsV1ServiceCreatePolicyRequest implements \JsonSerializable
{
    /**
     * @property string $description The description of the policy.
     * @property string $id The Policy ID.
     * @property string $name The name of the policy.
     * @property array $policyDetails
     * @property string $type The description of the policy.
    */
        protected $description;
        protected $id;
        protected $name;
        protected $policyDetails;
        protected $type;
    public function __construct(array $payload = []) {
        $this->description = Values::array_get($payload, 'description');
        $this->id = Values::array_get($payload, 'id');
        $this->name = Values::array_get($payload, 'name');
        $this->policyDetails = Values::array_get($payload, 'policy_details');
        $this->type = Values::array_get($payload, 'type');
    }

    public function toArray(): array
    {
        return $this->jsonSerialize();
    }

    public function jsonSerialize(): array
    {
        return [
            'description' => $this->description,
            'id' => $this->id,
            'name' => $this->name,
            'policy_details' => $this->policyDetails,
            'type' => $this->type
        ];
    }
}

class AssistantsV1ServiceCreateKnowledgeRequest implements \JsonSerializable
{
    /**
     * @property string $assistantId The Assistant ID.
     * @property string $description The description of the knowledge source.
     * @property array $knowledgeSourceDetails The details of the knowledge source based on the type.
     * @property string $name The name of the tool.
     * @property AssistantsV1ServiceCreatePolicyRequest $policy
     * @property string $type The type of the knowledge source.
     * @property string $embeddingModel The embedding model to be used for the knowledge source. It's required for 'Database' type but disallowed for other types.
    */
        protected $assistantId;
        protected $description;
        protected $knowledgeSourceDetails;
        protected $name;
        protected $policy;
        protected $type;
        protected $embeddingModel;
    public function __construct(array $payload = []) {
        $this->assistantId = Values::array_get($payload, 'assistant_id');
        $this->description = Values::array_get($payload, 'description');
        $this->knowledgeSourceDetails = Values::array_get($payload, 'knowledge_source_details');
        $this->name = Values::array_get($payload, 'name');
        $this->policy = Values::array_get($payload, 'policy');
        $this->type = Values::array_get($payload, 'type');
        $this->embeddingModel = Values::array_get($payload, 'embedding_model');
    }

    public function toArray(): array
    {
        return $this->jsonSerialize();
    }

    public function jsonSerialize(): array
    {
        return [
            'assistant_id' => $this->assistantId,
            'description' => $this->description,
            'knowledge_source_details' => $this->knowledgeSourceDetails,
            'name' => $this->name,
            'policy' => $this->policy,
            'type' => $this->type,
            'embedding_model' => $this->embeddingModel
        ];
    }
}

class AssistantsV1ServiceUpdateKnowledgeRequest implements \JsonSerializable
{
    /**
     * @property string $description The description of the knowledge source.
     * @property array $knowledgeSourceDetails The details of the knowledge source based on the type.
     * @property string $name The name of the knowledge source.
     * @property AssistantsV1ServiceCreatePolicyRequest $policy
     * @property string $type The description of the knowledge source.
     * @property string $embeddingModel The embedding model to be used for the knowledge source. It's only applicable to 'Database' type.
    */
        protected $description;
        protected $knowledgeSourceDetails;
        protected $name;
        protected $policy;
        protected $type;
        protected $embeddingModel;
    public function __construct(array $payload = []) {
        $this->description = Values::array_get($payload, 'description');
        $this->knowledgeSourceDetails = Values::array_get($payload, 'knowledge_source_details');
        $this->name = Values::array_get($payload, 'name');
        $this->policy = Values::array_get($payload, 'policy');
        $this->type = Values::array_get($payload, 'type');
        $this->embeddingModel = Values::array_get($payload, 'embedding_model');
    }

    public function toArray(): array
    {
        return $this->jsonSerialize();
    }

    public function jsonSerialize(): array
    {
        return [
            'description' => $this->description,
            'knowledge_source_details' => $this->knowledgeSourceDetails,
            'name' => $this->name,
            'policy' => $this->policy,
            'type' => $this->type,
            'embedding_model' => $this->embeddingModel
        ];
    }
}
