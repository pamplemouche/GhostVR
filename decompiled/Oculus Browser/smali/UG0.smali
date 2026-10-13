.class public LUG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LVG0;


# direct methods
.method public constructor <init>(LVG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUG0;->w:LVG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LUG0;->w:LVG0;

    .line 2
    iget-object v0, v0, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {v0}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v0

    iget-object v1, p0, LUG0;->w:LVG0;

    .line 4
    iget-object v1, v1, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    return-void
.end method
