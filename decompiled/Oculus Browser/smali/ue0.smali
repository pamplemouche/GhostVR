.class public Lue0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lue0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lue0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lue0;->a:Lue0;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lue0;

    invoke-direct {v0}, Lue0;-><init>()V

    .line 5
    sput-object v0, Lue0;->a:Lue0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lue0;->a:Lue0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    .locals 10

    const-string v0, "MobileHelpAndFeedback"

    .line 8
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 9
    new-instance v1, LRb0;

    new-instance v9, Lte0;

    invoke-direct {v9, p0, p1, p2}, Lte0;-><init>(Lue0;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v9}, LRb0;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;)V

    return-void
.end method
