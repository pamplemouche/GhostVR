.class public Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;
.super Ljava/lang/Object;
.source "QuickEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/quicklog/QuickEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerMarkers"
.end annotation


# static fields
.field public static final ALL_MARKERS:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

.field public static final ALL_MARKERS_EXC_QUICK:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

.field public static final NO_MARKERS:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;


# instance fields
.field final normalMarkersList:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final quickMarkersList:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v3, v1, v3

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;-><init>([I)V

    sput-object v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->ALL_MARKERS:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    .line 113
    new-instance v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    sget-object v1, Lcom/facebook/quicklog/QuickEventListener;->ALL_MARKERS_ARRAY:[I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;-><init>([I[I)V

    sput-object v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->ALL_MARKERS_EXC_QUICK:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    .line 120
    new-instance v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    new-array v1, v3, [I

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;-><init>([I)V

    sput-object v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->NO_MARKERS:Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    return-void
.end method

.method varargs constructor <init>([I)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    .line 165
    iput-object p1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    .line 166
    return-void
.end method

.method constructor <init>([I[I)V
    .locals 0
    .param p1    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    .line 171
    iput-object p2, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 178
    :cond_3
    check-cast p1, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    .line 179
    iget-object v2, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    iget-object v3, p1, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    iget-object v3, p1, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    .line 180
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{normalMarkers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quickMarkers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
