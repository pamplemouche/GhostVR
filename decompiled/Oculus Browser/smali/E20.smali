.class public final synthetic LE20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final a:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LE20;

    invoke-direct {v0}, LE20;-><init>()V

    sput-object v0, LE20;->a:Lorg/chromium/base/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LRb0;

    .line 1
    sget-object p1, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->a:LTb0;

    check-cast p1, LiY;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
