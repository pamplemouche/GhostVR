.class public final Lcom/samsung/android/app/vrsetupwizard/common/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/samsung/android/app/vrsetupwizard/common/b/e;

# The value of this static final field might be set in the static constructor
.field private static final b:I = 0x1b

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/b/e;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/e;-><init>()V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/e;

    const/16 v0, 0x1b

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->b:I

    const-string v1, "Galaxy Note4"

    const-string v2, "Galaxy Note5"

    const-string v3, "Galaxy Note7"

    const-string v4, "Galaxy Note FE"

    const-string v5, "Galaxy Note8"

    const-string v6, "Galaxy Note9"

    const-string v7, "Galaxy S6"

    const-string v8, "Galaxy S6 edge"

    const-string v9, "Galaxy S6 edge+"

    const-string v10, "Galaxy S7"

    const-string v11, "Galaxy S7 edge"

    const-string v12, "Galaxy S8"

    const-string v13, "Galaxy S8+"

    const-string v14, "Galaxy S9"

    const-string v15, "Galaxy S9+"

    const-string v16, "Galaxy A5 2018"

    const-string v17, "Galaxy A7 2018"

    const-string v18, "Galaxy A8 Star"

    const-string v19, "Galaxy A9Y 2018"

    const-string v20, "Galaxy S10e"

    const-string v21, "Galaxy S10"

    const-string v22, "Galaxy S10+"

    const-string v23, "Galaxy S10 5G"

    const-string v24, "Galaxy Note10"

    const-string v25, "Galaxy Note10 5G"

    const-string v26, "Galaxy Note10+"

    const-string v27, "Galaxy Note10+ 5G"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->c:[Ljava/lang/String;

    const-string v1, "(SM-N910|SM-N916).*"

    const-string v2, "(SM-N920).*"

    const-string v3, "(SM-N930|SC-01J|SGH-N037|SCV34|LTV).*"

    const-string v4, "(SM-N935|SM-A435).*"

    const-string v5, "(SM-N950|SC-01K|SCV37|SGH-N473|OWY).*"

    const-string v6, "(SM-N960|SC-01L|SCV40|SGH-N058|RZB).*"

    const-string v7, "(SM-G920|SC-05G|SM-S906L|SM-S907VL).*"

    const-string v8, "(SM-G925|SC-04G|SCV31|404SC).*"

    const-string v9, "(SM-G928).*"

    const-string v10, "(SM-G930).*"

    const-string v11, "(SM-G935|SC-02H|SCV33|SGH-N611|KSU).*"

    const-string v12, "(SM-G950|SC-02J|SCV36|SGH-N171|NVX).*"

    const-string v13, "(SM-G955|SC-03J|SCV35|SGH-N206|MUW).*"

    const-string v14, "(SM-G960|SC-02K|SCV38).*"

    const-string v15, "(SM-G965|SC-03K|SCV39).*"

    const-string v16, "(SM-A530|SC-02L).*"

    const-string v17, "(SM-A730).*"

    const-string v18, "(SM-G885).*"

    const-string v19, "(SM-A920).*"

    const-string v20, "(SM-G970).*"

    const-string v21, "(SM-G973|SC-03L|SCV41|SGH-N794|SAC).*"

    const-string v22, "(SM-G975|SC-04L|SC-05L|SCV42|SGH-N936|UCE).*"

    const-string v23, "(SM-G977).*"

    const-string v24, "(SM-N970).*"

    const-string v25, "(SM-N971).*"

    const-string v26, "(SM-N975|SC-01M|SCV45|SGH-N192|SGH-N301|TMN).*"

    const-string v27, "(SM-N976).*"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/vrsetupwizard/common/b/f;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/f;->values()[Lcom/samsung/android/app/vrsetupwizard/common/b/f;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->d:[Ljava/lang/String;

    aget-object v4, v4, v2

    new-instance v5, La/g/f;

    invoke-direct {v5, v4}, La/g/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, La/g/f;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/f;->values()[Lcom/samsung/android/app/vrsetupwizard/common/b/f;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->a()Lcom/samsung/android/app/vrsetupwizard/common/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->c:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/f;->ordinal()I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "SAMSUNG-"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, La/g/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, La/g/f;

    invoke-direct {v0, v2}, La/g/f;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, La/g/f;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
