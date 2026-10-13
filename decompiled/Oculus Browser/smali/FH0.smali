.class public abstract LFH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;


# instance fields
.field public w:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LEH0;

    invoke-direct {v0, p0}, LEH0;-><init>(LFH0;)V

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract a(Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract b(Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LFH0;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, v0}, LFH0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2
    invoke-virtual {p0}, LFH0;->a()V

    return-void
.end method
