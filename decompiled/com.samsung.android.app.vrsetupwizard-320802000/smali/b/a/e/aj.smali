.class public interface abstract Lb/a/e/aj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/e/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/e/ak;

    invoke-direct {v0}, Lb/a/e/ak;-><init>()V

    sput-object v0, Lb/a/e/aj;->a:Lb/a/e/aj;

    return-void
.end method


# virtual methods
.method public abstract a(ILb/a/e/b;)V
.end method

.method public abstract a(ILc/j;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb/a/e/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb/a/e/c;",
            ">;Z)Z"
        }
    .end annotation
.end method
