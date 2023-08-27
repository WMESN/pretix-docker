FROM pretix/standalone:latest
USER root
# ZUGFeRD is a German standard allowing to embed structured data in PDF>
RUN pip3 install pretix-zugferd
# Allows you to receive payments via SEPA direct debit. Users will be a>
RUN pip3 install pretix-sepadebit
# Allows you to receive payments via Klarna's Sofort service
RUN pip3 install pretix-sofort
# Enables you to charge a flat service fee on all orders
RUN pip3 install pretix-servicefees
# Create static content pages. You can use this to add information abou>
RUN pip3 install pretix-pages
# Adds a number of free fonts 
RUN pip3 install pretix-fontpack-free
# Allows you to receive Bitcoin payments via BitPay or BTCPay Server
RUN pip3 install pretix-bitpay
# Automatic logging of bounces on pretix-level
RUN pip3 install pretix-bounces
# Third party: Authentication backend for CAS SSO servers
RUN pip3 install pretix-cas
RUN mkdir -p /db
RUN chown pretixuser /db
USER pretixuser
RUN cd /pretix/src && make production
