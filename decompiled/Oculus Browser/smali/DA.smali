.class public final synthetic LDA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LEA;

.field public final x:I


# direct methods
.method public constructor <init>(LEA;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDA;->w:LEA;

    iput p2, p0, LDA;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LDA;->w:LEA;

    iget v1, p0, LDA;->x:I

    .line 1
    iget-object v0, v0, LEA;->a:Lww;

    invoke-interface {v0, v1}, Lww;->a(I)V

    return-void
.end method
