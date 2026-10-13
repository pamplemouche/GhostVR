.class public Lhp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhp;->b:Ljava/lang/String;

    iput-object p2, p0, Lhp;->a:Ljava/lang/String;

    iput p4, p0, Lhp;->c:I

    return-void
.end method
