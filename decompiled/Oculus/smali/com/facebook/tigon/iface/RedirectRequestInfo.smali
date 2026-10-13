.class public final Lcom/facebook/tigon/iface/RedirectRequestInfo;
.super Ljava/lang/Object;
.source "RedirectRequestInfo.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private mRedirectEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/facebook/tigon/iface/RedirectRequestInfo;->mRedirectEnabled:Z

    .line 16
    return-void
.end method
