.class public LvM0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LvM0;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, LvM0;->b:I

    .line 4
    iput-boolean p4, p0, LvM0;->d:Z

    .line 5
    iput p3, p0, LvM0;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LvM0;->a:Ljava/lang/String;

    .line 8
    iput p2, p0, LvM0;->b:I

    .line 9
    iput-boolean p3, p0, LvM0;->d:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, LvM0;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LvM0;->a:Ljava/lang/String;

    return-object v0
.end method
