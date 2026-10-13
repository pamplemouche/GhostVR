.class public Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;
.super Ljava/lang/Object;
.source "LaunchProductEvent.java"


# instance fields
.field public final itemId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->packageName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->itemId:Ljava/lang/String;

    .line 13
    return-void
.end method
