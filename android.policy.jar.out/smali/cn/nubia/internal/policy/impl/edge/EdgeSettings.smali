.class public Lcn/nubia/internal/policy/impl/edge/EdgeSettings;
.super Ljava/lang/Object;
.source "EdgeSettings.java"


# static fields
.field public static final ALL_INCOMPLETE_EDGE_SWITCH:[Ljava/lang/String;

.field public static final DOUBLE_CLICK:Ljava/lang/String; = "nubia_edge_double_click"

.field public static final DOUBLE_SIDE_MOVE:Ljava/lang/String; = "nubia_edge_double_side_move"

.field public static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field public static final HOLD_AND_HOLD:Ljava/lang/String; = "nubia_edge_hold_hold"

.field public static final HOLD_AND_TAP:Ljava/lang/String; = "nubia_edge_hold_tap"

.field public static final HOLD_FOUR_CORNER:Ljava/lang/String; = "nubia_edge_hold_four_corner"

.field public static final LEFT_SIDE_MOVE:Ljava/lang/String; = "nubia_edge_left_move_switch"

.field public static final MOVE_LOOP:Ljava/lang/String; = "nubia_edge_move_loop"

.field public static final RIGHT_SIDE_MOVE:Ljava/lang/String; = "nubia_edge_right_move_switch"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nubia_edge_left_move_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nubia_edge_right_move_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nubia_edge_double_side_move"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nubia_edge_move_loop"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nubia_edge_hold_hold"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nubia_edge_hold_tap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nubia_edge_hold_four_corner"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nubia_edge_double_click"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeSettings;->ALL_INCOMPLETE_EDGE_SWITCH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
