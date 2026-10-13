.class interface abstract Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;
.super Ljava/lang/Object;
.source "CastWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cast/CastWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SocketMessageListener"
.end annotation


# virtual methods
.method public abstract onAnswer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStartCast(Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V
.end method

.method public abstract onStopCast(Ljava/lang/String;)V
.end method
