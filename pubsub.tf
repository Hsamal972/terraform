resource "google_pubsub_topic" "pubsub_topic" {
  name = "GCP_PUBSUB_TOPIC_${terraform.workspace}_cf-offer-calculator"
}

resource "google_pubsub_subscription" "pubsub_subscription" {
  name  = "GCP_PUBSUB_SUBSCRIBER_${terraform.workspace}_cf-offer-calculator"
  topic = google_pubsub_topic.pubsub_topic.name
}