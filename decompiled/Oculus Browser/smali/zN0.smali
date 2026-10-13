.class public final synthetic LzN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final a:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LzN0;

    invoke-direct {v0}, LzN0;-><init>()V

    sput-object v0, LzN0;->a:Lorg/chromium/base/Callback;

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

    check-cast p1, Ljava/lang/Exception;

    return-void
.end method
