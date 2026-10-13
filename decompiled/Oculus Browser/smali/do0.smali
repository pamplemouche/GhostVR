.class public Ldo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ldo0;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Llo0;

    .line 2
    sget-object p1, Ljo0;->a:Lmo0;

    .line 3
    iget-object v0, p0, Ldo0;->a:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lmo0;->a(Landroid/content/Context;IZ)Z

    .line 4
    sget-object p1, Ljo0;->a:Lmo0;

    .line 5
    invoke-virtual {p1, p0}, Lmo0;->b(Lorg/chromium/base/Callback;)V

    return-void
.end method
