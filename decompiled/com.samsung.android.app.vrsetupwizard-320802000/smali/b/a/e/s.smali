.class public abstract Lb/a/e/s;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lb/a/e/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/e/t;

    invoke-direct {v0}, Lb/a/e/t;-><init>()V

    sput-object v0, Lb/a/e/s;->f:Lb/a/e/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lb/a/e/ab;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Lb/a/e/j;)V
    .locals 0

    return-void
.end method
