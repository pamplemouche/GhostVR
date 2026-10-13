.class public LMV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMV0;->w:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LMV0;->w:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    new-instance v1, LLV0;

    invoke-direct {v1, p0}, LLV0;-><init>(LMV0;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(LE01;)V

    return-void
.end method
