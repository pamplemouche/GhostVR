.class abstract Lb/z;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/aa;

    invoke-direct {v0}, Lb/aa;-><init>()V

    sput-object v0, Lb/z;->a:Lb/z;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lb/z;)Lb/ac;
    .locals 1

    new-instance v0, Lb/ab;

    invoke-direct {v0, p0}, Lb/ab;-><init>(Lb/z;)V

    return-object v0
.end method
