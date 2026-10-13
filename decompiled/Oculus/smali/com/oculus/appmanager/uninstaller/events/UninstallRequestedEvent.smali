.class public Lcom/oculus/appmanager/uninstaller/events/UninstallRequestedEvent;
.super Ljava/lang/Object;
.source "UninstallRequestedEvent.java"


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallRequestedEvent;->packageName:Ljava/lang/String;

    .line 11
    return-void
.end method
