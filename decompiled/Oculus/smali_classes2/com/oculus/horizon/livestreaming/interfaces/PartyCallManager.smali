.class public interface abstract Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;
.super Ljava/lang/Object;
.source "PartyCallManager.java"


# virtual methods
.method public abstract getIncomingCalls()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/oculus/horizon/livestreaming/model/IncomingCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoStreamingParticipants()[J
.end method

.method public abstract markIncomingCallAsSeen(Ljava/lang/String;)Z
.end method

.method public abstract removeIncomingCall(Ljava/lang/String;)Z
.end method
