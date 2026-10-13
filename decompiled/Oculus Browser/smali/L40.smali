.class public LL40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk40;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LL40;->a:I

    .line 3
    iput p2, p0, LL40;->b:I

    .line 4
    iput-boolean p3, p0, LL40;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, LL40;->b:I

    return v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget v0, p0, LL40;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
