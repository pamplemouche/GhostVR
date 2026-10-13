.class public Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopServiceCallback"
.end annotation


# instance fields
.field private final mService:Landroid/app/Service;

.field private final mStartId:I


# direct methods
.method public constructor <init>(Landroid/app/Service;I)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->mService:Landroid/app/Service;

    .line 214
    iput p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->mStartId:I

    .line 215
    return-void
.end method


# virtual methods
.method public stopService()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->mService:Landroid/app/Service;

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->mStartId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 219
    return-void
.end method
