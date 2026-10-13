.class public Lcom/oculus/horizon/libraryui/events/LibraryEventBus;
.super Lcom/oculus/appmanager/eventbus/BaseEventBus;
.source "LibraryEventBus.java"


# static fields
.field private static sInstance:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/appmanager/eventbus/BaseEventBus;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/oculus/horizon/libraryui/events/LibraryEventBus;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->sInstance:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    invoke-direct {v0}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;-><init>()V

    sput-object v0, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->sInstance:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    .line 19
    :cond_0
    sget-object v0, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->sInstance:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    return-object v0
.end method
