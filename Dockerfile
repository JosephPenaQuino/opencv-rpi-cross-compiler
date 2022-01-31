FROM josephpena/rpicv4:v1.0.0
COPY src/* /root/

ENTRYPOINT ["./root/cross_compile.sh"]
CMD ["build-rpi"]
