.class public final synthetic LBs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LBs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->B:LZs0;

    .line 2
    iget-object v0, v0, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    .line 3
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->B:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->B:Z

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->f()Z

    return-void
.end method
