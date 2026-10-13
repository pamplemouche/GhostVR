.class public final synthetic LnL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lle1;


# direct methods
.method public constructor <init>(Lle1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LnL0;->a:Lle1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LnL0;->a:Lle1;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1
    sget-object v1, LqL0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method
