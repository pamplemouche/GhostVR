.class public interface abstract Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;
.super Ljava/lang/Object;
.source "SystemRoutesResultReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/SystemRoutesResultReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract updateSystemRoutesHolder(Lcom/oculus/vrshell/config/SystemRoutesConfiguration;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/config/SystemRoutesConfiguration;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
