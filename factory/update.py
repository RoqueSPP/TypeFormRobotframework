

def json_bodyup():
    return [
        {
            "op": "replace",
            "path": "/title",
            "value": "Atualiza form"
        },
        {
            "op": "replace",
            "path": "/settings/is_public",
            "value": False
        },
        {
            "op": "replace",
            "path": "/settings/meta",
            "value": {
                "allow_indexing": True,
                "canva_design_id": "DAElrx6aq-A",
                "description": "meta description",
                "image": {
                    "href": "https://images.typeform.com/images/NwfYdqfMrDxQ"
                },
                "title": "Atualizar form"
            }
        },
        {
            "op": "replace",
            "path": "/cui_settings",
            "value": {
                "avatar": "https://images.typeform.com/images/4bcd3",
                "is_typing_emulation_disabled": False,
                "typing_emulation_speed": "fast"
            }
        }
    ]
