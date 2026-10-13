.class public LeT0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:LiT0;


# direct methods
.method public constructor <init>(LiT0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LeT0;->w:LiT0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LeT0;->w:LiT0;

    .line 2
    iget p2, p1, LiT0;->C:I

    .line 3
    invoke-static {p1, p2}, LiT0;->a(LiT0;I)V

    return-void
.end method
