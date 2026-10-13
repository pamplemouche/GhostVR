.class public interface abstract Lcom/oculus/logging/utils/EventMigrationHelper;
.super Ljava/lang/Object;
.source "EventMigrationHelper.java"


# virtual methods
.method public abstract createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;
.end method

.method public abstract createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;
.end method

.method public abstract createFunnelData()Lcom/oculus/logging/utils/FunnelData;
.end method

.method public abstract endFunnel(Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract registerFunnel(Ljava/lang/String;I)V
.end method

.method public abstract reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/oculus/logging/utils/FunnelData;)V
.end method

.method public abstract startFunnel(Ljava/lang/String;Ljava/lang/Long;)V
.end method
