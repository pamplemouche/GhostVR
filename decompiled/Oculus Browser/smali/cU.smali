.class public final synthetic LcU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final a:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LcU;

    invoke-direct {v0}, LcU;-><init>()V

    sput-object v0, LcU;->a:Lorg/chromium/base/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Exception;

    .line 1
    new-instance v0, LmU;

    const-string v1, "Promise was rejected without a rejection handler."

    invoke-direct {v0, v1, p1}, LmU;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
