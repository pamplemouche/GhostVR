.class public Lu81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lv81;


# direct methods
.method public constructor <init>(Lv81;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu81;->x:Lv81;

    iput p2, p0, Lu81;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu81;->x:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 2
    iget-object v0, v0, LA81;->d:Lx81;

    .line 3
    iget v1, p0, Lu81;->w:I

    invoke-interface {v0, v1}, Lx81;->a(I)V

    return-void
.end method
