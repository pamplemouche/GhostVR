.class public final Lis;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lft;


# instance fields
.field public final synthetic a:Lgs;


# direct methods
.method public constructor <init>(Lgs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lis;->a:Lgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lis;->a:Lgs;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lgs;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
