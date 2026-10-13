.class public LUi0;
.super LUH0;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final b:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic c:LWi0;


# direct methods
.method public constructor <init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUi0;->c:LWi0;

    invoke-direct {p0}, LUH0;-><init>()V

    .line 2
    iput-object p2, p0, LUi0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    iput-object p1, p0, LUi0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 1
    iget-object v0, p0, LUi0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, LUi0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LUi0;->c:LWi0;

    iget-object v1, p0, LUi0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    :cond_0
    return-void
.end method
