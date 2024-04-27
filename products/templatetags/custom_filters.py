from django import template
import locale

register = template.Library()

@register.filter
def localecurrency(value):
    locale.setlocale(locale.LC_ALL, 'id_ID.UTF-8')
    return locale.currency(value, grouping=True, symbol=False)
