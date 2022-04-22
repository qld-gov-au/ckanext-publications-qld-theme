# encoding: utf-8

from flask import Blueprint

from ckantoolkit import render


def header_snippet():
    return render('header.html')


blueprint = Blueprint(
    u'publications_qld',
    __name__
)

blueprint.add_url_rule(u'/header.html', view_func=header_snippet)
