.class public final synthetic LEs0;
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

    iput-object p1, p0, LEs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LEs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lmn0;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
