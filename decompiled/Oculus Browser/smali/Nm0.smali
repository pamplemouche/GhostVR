.class public final synthetic LNm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNm0;->w:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LNm0;->w:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    throw v1

    .line 2
    :cond_0
    throw v1
.end method
