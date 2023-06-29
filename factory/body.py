

def json_body():
    return {
        "fields": [
            {
                "attachment": {
                    "href": "https://www.youtube.com/watch?v=Uui3oT-XBxs",
                    "properties": {
                        "description": "Typeform Home documentary"
                    },
                    "scale": 0.8,
                    "type": "video"
                },
                "properties": {
                    "description": "Cool description for the date",
                    "separator": "-",
                    "structure": "DDMMYYYY"
                },
                "ref": "nice_readable_date_reference",
                "title": "Teste de form",
                "type": "date",
                "validations": {
                    "required": False
                }
            },
            {
                "layout": {
                    "attachment": {
                        "href": "https://images.typeform.com/images/4BKUhw8A9cSM",
                        "type": "image"
                    },
                    "placement": "right",
                    "type": "float"
                },
                "properties": {
                    "alphabetical_order": False,
                    "choices": [
                        {
                            "label": "Foo"
                        },
                        {
                            "label": "Bar"
                        }
                    ],
                    "description": "Cool description for the dropdown",
                    "randomize": False
                },
                "ref": "nice_readable_dropdown_reference",
                "title": "Dropdown Title",
                "type": "dropdown",
                "validations": {
                    "required": False
                }
            }
        ],
        "title": "Teste de form",
        "type": "quiz"
    }