.class public Ltl0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Ltl0;


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltl0;

    invoke-direct {v0}, Ltl0;-><init>()V

    sput-object v0, Ltl0;->b:Ltl0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltl0;->a:Ljava/util/ArrayList;

    return-void
.end method
