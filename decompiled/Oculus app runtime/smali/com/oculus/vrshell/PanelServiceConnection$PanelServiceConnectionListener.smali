.class public interface abstract Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;
.super Ljava/lang/Object;
.source "PanelServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/PanelServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanelServiceConnectionListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected(Landroid/content/ComponentName;)V
.end method

.method public abstract onServiceDisconnected(I)V
.end method
