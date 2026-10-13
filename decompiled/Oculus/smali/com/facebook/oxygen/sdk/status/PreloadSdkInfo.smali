.class public Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;
.super Ljava/lang/Object;
.source "PreloadSdkInfo.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final isOperational:Z

.field public final type$$CLONE:Ljava/lang/Integer;
    .annotation build Lcom/facebook/annotationprocessors/transformer/api/Clone;
        from = "type"
        processor = "com.facebook.thecount.transformer.Transformer"
    .end annotation
.end field
