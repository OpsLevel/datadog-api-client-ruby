# Create a notebook returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new

body = DatadogAPIClient::V1::NotebookCreateRequest.new({
  data: DatadogAPIClient::V1::NotebookCreateData.new({
    attributes: DatadogAPIClient::V1::NotebookCreateDataAttributes.new({
      cells: [
        DatadogAPIClient::V1::NotebookCellCreateRequest.new({
          attributes: DatadogAPIClient::V1::NotebookMarkdownCellAttributes.new({
            definition: DatadogAPIClient::V1::NotebookMarkdownCellDefinition.new({
              text: '## Some test markdown\n\n```js\nvar x, y;\nx = 5;\ny = 6;\n```',
              type: DatadogAPIClient::V1::NotebookMarkdownCellDefinitionType::MARKDOWN,
            }),
          }),
          type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS,
        }),
        DatadogAPIClient::V1::NotebookCellCreateRequest.new({
          attributes: DatadogAPIClient::V1::NotebookTimeseriesCellAttributes.new({
            definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
              requests: [
                DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
                  display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
                  q: "avg:system.load.1{*}",
                  style: DatadogAPIClient::V1::WidgetRequestStyle.new({
                    line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
                    line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
                    palette: "dog_classic",
                  }),
                }),
              ],
              show_legend: true,
              type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
              yaxis: DatadogAPIClient::V1::WidgetAxis.new({
                scale: "linear",
              }),
            }),
            graph_size: DatadogAPIClient::V1::NotebookGraphSize::MEDIUM,
            split_by: DatadogAPIClient::V1::NotebookSplitBy.new({
              keys: [],
              tags: [],
            }),
            time: nil,
          }),
          type: DatadogAPIClient::V1::NotebookCellResourceType::NOTEBOOK_CELLS,
        }),
      ],
      name: "Example-Create_a_notebook_returns_OK_response",
      status: DatadogAPIClient::V1::NotebookStatus::PUBLISHED,
      time: DatadogAPIClient::V1::NotebookRelativeTime.new({
        live_span: DatadogAPIClient::V1::WidgetLiveSpan::PAST_ONE_HOUR,
      }),
    }),
    type: DatadogAPIClient::V1::NotebookResourceType::NOTEBOOKS,
  }),
})
p api_instance.create_notebook(body)
