.class public Ljf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkf0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LoT0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljf0;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    .line 4
    invoke-static {p1}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object p1

    iput-object p1, p0, Ljf0;->b:LoT0;

    return-void
.end method
