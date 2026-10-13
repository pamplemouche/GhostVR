.class public LHn0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static e:Ljava/util/Random;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, LHn0;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LHn0;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LHn0;->c:Landroid/content/Context;

    .line 4
    iput-wide p3, p0, LHn0;->a:J

    .line 5
    iput-wide p5, p0, LHn0;->b:J

    return-void
.end method
