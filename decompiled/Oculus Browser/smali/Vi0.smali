.class public LVi0;
.super Lg11;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final synthetic b:LWi0;


# direct methods
.method public constructor <init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVi0;->b:LWi0;

    invoke-direct {p0}, Lg11;-><init>()V

    .line 2
    iput-object p2, p0, LVi0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method


# virtual methods
.method public hasEffectivelyFullscreenVideoChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, LVi0;->b:LWi0;

    iget-object v0, p0, LVi0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method
