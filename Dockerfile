FROM alpine
env WORD=$WORD
RUN echo $MY_WORD
CMD ["echo", "hello $WORD"]
