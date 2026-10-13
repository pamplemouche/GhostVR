.class public final synthetic Lfv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final w:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfv0;

    invoke-direct {v0}, Lfv0;-><init>()V

    sput-object v0, Lfv0;->w:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LQu0;

    check-cast p2, LQu0;

    invoke-static {p1, p2}, Lyv0;->a(LQu0;LQu0;)I

    move-result p1

    return p1
.end method
