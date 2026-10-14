.class La/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:La/c/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/c/b/d;

    invoke-direct {v0}, La/c/b/d;-><init>()V

    sput-object v0, La/c/b/d;->a:La/c/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()La/c/b/d;
    .locals 1

    sget-object v0, La/c/b/d;->a:La/c/b/d;

    return-object v0
.end method
