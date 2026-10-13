.class public final synthetic LK90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final a:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LK90;

    invoke-direct {v0}, LK90;-><init>()V

    sput-object v0, LK90;->a:Lorg/chromium/base/Callback;

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

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-static {p1}, LU90;->b(Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
