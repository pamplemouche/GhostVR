.class public LXL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyc0;


# instance fields
.field public final synthetic a:LYL0;


# direct methods
.method public constructor <init>(LYL0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXL0;->a:LYL0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, LXL0;->a:LYL0;

    iget-object v0, v0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LXL0;->a:LYL0;

    iget-object v0, v0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    .line 3
    :cond_0
    iget-object v0, p0, LXL0;->a:LYL0;

    iget-object v0, v0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->z0()V

    return-void
.end method
