.class public Lcom/facebook/common/android/FbLocalBroadcastManager;
.super Ljava/lang/Object;
.source "FbLocalBroadcastManager.java"


# static fields
.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->sLock:Ljava/lang/Object;

    return-void
.end method
