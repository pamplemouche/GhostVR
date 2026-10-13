.class public Lcom/oculus/http/core/base/ApiError;
.super Ljava/lang/Exception;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;,
        Lcom/oculus/http/core/base/ApiError$Type;
    }
.end annotation


# instance fields
.field public conversionMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public httpStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isNetworkTimeout:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/oculus/http/core/base/ApiError$Type;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field
